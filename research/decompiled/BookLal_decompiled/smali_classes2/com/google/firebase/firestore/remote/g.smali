.class public final synthetic Lcom/google/firebase/firestore/remote/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

.field public final synthetic c:Lj3/V;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/firestore/remote/g;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/g;->b:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/g;->c:Lj3/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/remote/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/g;->b:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/g;->c:Lj3/V;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->b(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/g;->b:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/g;->c:Lj3/V;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->a(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/g;->b:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/g;->c:Lj3/V;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->d(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/g;->b:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/g;->c:Lj3/V;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->c(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/g;->b:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/g;->c:Lj3/V;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->e(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lj3/V;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
