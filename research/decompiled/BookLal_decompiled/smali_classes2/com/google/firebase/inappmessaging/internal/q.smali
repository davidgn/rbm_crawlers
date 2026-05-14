.class public final synthetic Lcom/google/firebase/inappmessaging/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/inappmessaging/internal/q;->a:I

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/q;->b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/q;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/q;->b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/q;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/B0;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->b(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/protobuf/B0;)Lcom/google/protobuf/c;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/q;->b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/q;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/c;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->a(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/protobuf/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
