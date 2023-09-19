const connection = new signalR.HubConnectionBuilder()
    .withUrl("/chatHub")
    .build();

connection.start().then(() => {
    console.log("Connection started");
}).catch((err) => {
    console.error(err.toString());
});

connection.on("ReceiveMessage", (user, message) => {
    let response = JSON.parse(user);
    loadChats(response.UserId);
});
function scrollToBottom() {
    var container = document.getElementById('chatDiv');
    var container2 = document.getElementsByClassName('direct-chat-messages')[0];
    container.scrollTop = container.scrollHeight;
    container2.scrollTop = container2.scrollHeight;
}
var loadChats = (userId) => {
    $.post('/Chat/GetChats', { userId: userId }).done((response) => {
        $('#chatDiv').empty();
        $('#chatDiv').html(response);
        scrollToBottom();
    }).fail((xhr) => {
        alertnotify(-1, 'Server error in loading chat!');
    });
}