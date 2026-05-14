.class public final synthetic Lcom/google/firebase/firestore/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/util/b;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/util/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/util/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/util/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->d(Ljava/lang/RuntimeException;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/util/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->a(Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/util/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->f(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
