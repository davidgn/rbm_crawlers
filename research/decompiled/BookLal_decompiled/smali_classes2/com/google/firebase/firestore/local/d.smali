.class public final synthetic Lcom/google/firebase/firestore/local/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/local/IndexManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/IndexManager;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/local/d;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/d;->b:Lcom/google/firebase/firestore/local/IndexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/local/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/d;->b:Lcom/google/firebase/firestore/local/IndexManager;

    check-cast p1, Lcom/google/firebase/firestore/model/FieldIndex;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/IndexManager;->deleteFieldIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/d;->b:Lcom/google/firebase/firestore/local/IndexManager;

    check-cast p1, Lcom/google/firebase/firestore/model/FieldIndex;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/IndexManager;->addFieldIndex(Lcom/google/firebase/firestore/model/FieldIndex;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
