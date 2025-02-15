import { Chat } from "./chat/Chat";

export function initChat(
    isAdminOfCourse: boolean,
    streamId: number,
    streamStart: string,
    liveNowTimestamp: string,
    userId: number,
    userName: string,
    activateChatReplay: boolean,
) {
    return {
        c: new Chat(isAdminOfCourse, streamId, streamStart, liveNowTimestamp, userId, userName, activateChatReplay),
    };
}

/*
    Scroll to the bottom of the 'chatBox'
 */
export function scrollToBottom() {
    document.getElementById("chatBox").scrollTop = document.getElementById("chatBox").scrollHeight;
}

/*
    Scroll to top of the 'chatBox'
 */
export function scrollToTop() {
    document.getElementById("chatBox").scrollTo({ top: 0, behavior: "smooth" });
}

export function scrollToElement(element: HTMLElement) {
    const chatBox = document.getElementById("chatBox");
    chatBox.scrollTop = element.offsetTop;
}

let orderByLikes = false; // sorting by likes or by time

export function setOrder(obl: boolean) {
    orderByLikes = obl;
}

export function shouldScroll(): boolean {
    if (orderByLikes) {
        return false; // only scroll if sorting by time
    }
    const c = document.getElementById("chatBox");
    if (!c) {
        return false;
    }
    return c.scrollHeight - c.scrollTop <= c.offsetHeight;
}

export function showNewMessageIndicator() {
    window.dispatchEvent(new CustomEvent("messageindicator", { detail: { show: true } }));
}

export function scrollChat() {
    if (orderByLikes) {
        return; // only scroll if sorting by time
    }
    const c = document.getElementById("chatBox");
    c.scrollTop = c.scrollHeight;
}

export function scrollToLatestMessage() {
    const c = document.getElementById("chatBox");
    c.scrollTo({ top: c.scrollHeight, behavior: "smooth" });
    window.dispatchEvent(new CustomEvent("messageindicator", { detail: { show: false } }));
}

export function messageDateToString(date: string) {
    const d = new Date(date);
    return ("0" + d.getHours()).slice(-2) + ":" + ("0" + d.getMinutes()).slice(-2);
}
