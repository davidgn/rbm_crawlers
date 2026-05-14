.class Lcom/google/firebase/database/tubesock/WebSocket$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/tubesock/WebSocket;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/tubesock/WebSocket;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/tubesock/WebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocket$2;->this$0:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket$2;->this$0:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-static {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->access$000(Lcom/google/firebase/database/tubesock/WebSocket;)V

    return-void
.end method
