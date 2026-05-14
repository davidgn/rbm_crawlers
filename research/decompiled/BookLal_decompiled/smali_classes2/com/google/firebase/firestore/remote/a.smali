.class public final synthetic Lcom/google/firebase/firestore/remote/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/remote/AbstractStream;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/AbstractStream;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/remote/a;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/a;->b:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/remote/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/a;->b:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AbstractStream;->b(Lcom/google/firebase/firestore/remote/AbstractStream;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/a;->b:Lcom/google/firebase/firestore/remote/AbstractStream;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AbstractStream;->a(Lcom/google/firebase/firestore/remote/AbstractStream;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
