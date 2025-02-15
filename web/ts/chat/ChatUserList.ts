import { getCurrentWordPositions } from "./misc";
import { ChatUser } from "./NewChatMessage";

export class ChatUserList {
    subset: ChatUser[];
    streamId: number;
    currIndex: number;
    valid: boolean;
    private all: object[];

    constructor(streamId: number) {
        this.all = this.subset = [];
        this.streamId = streamId;
        this.currIndex = 0;
        this.valid = false;
    }

    async LoadAll(): Promise<ChatUser[]> {
        return fetch(`/api/chat/${this.streamId}/users`).then((res) => res.json());
    }

    isValid(): boolean {
        return this.subset.length >= 0 && this.valid;
    }

    filterUsers(message: string, cursorPos: number) {
        const pos = getCurrentWordPositions(message, cursorPos);
        if (pos[0] === 0 && pos[1] === 0) {
            // substring(0,0) returns ''
            pos[1] = 1;
        }

        const currentWord = message.substring(pos[0], pos[1]);
        if (message === "" || !currentWord.startsWith("@")) {
            this.subset = [];
            this.valid = false;
            return;
        }

        if (currentWord === "@") {
            // load users on '@'
            this.LoadAll().then((users) => {
                this.all = this.subset = users;
            });
        } else {
            const input = currentWord.substring(1);
            // @ts-ignore
            this.subset = this.all.filter((user) => user.name.startsWith(input));
        }
        this.valid = true;
        this.currIndex = 0; // reset index on show
    }

    clear() {
        this.subset = [];
        this.valid = false;
    }

    next() {
        this.currIndex = (this.currIndex + 1) % this.subset.length;
    }

    prev() {
        this.currIndex = (this.currIndex - 1) % this.subset.length;
    }

    getSelected() {
        return this.subset[this.currIndex];
    }
}
