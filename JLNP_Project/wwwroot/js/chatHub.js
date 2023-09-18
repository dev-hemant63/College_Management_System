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
var loadChats = (userId) => {
    $.post('/Chat/GetChats', { userId: userId }).done((response) => {
        $('#chatDiv').empty();
        $('#chatDiv').html(response);
        scrollToBottom();
    }).fail((xhr) => {
        alertnotify(-1, 'Server error in loading chat!');
    });
}
function scrollToBottom() {
    var container = document.getElementById('chatDiv');
    container.scrollTop = container.scrollHeight;
}