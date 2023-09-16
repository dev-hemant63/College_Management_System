const connection = new signalR.HubConnectionBuilder()
    .withUrl("/chatHub")
    .build();

connection.start().then(() => {
    console.log("Connection started");
}).catch((err) => {
    console.error(err.toString());
});

connection.on("ReceiveMessage", (user, message) => {
    console.log(`chat hub =  ${user}: ${message}`);
});