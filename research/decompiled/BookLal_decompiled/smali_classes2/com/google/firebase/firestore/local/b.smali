.class public final synthetic Lcom/google/firebase/firestore/local/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/k;
.implements Lcom/google/firebase/firestore/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/local/LocalStore;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/local/b;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/b;->b:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/local/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/b;->b:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/LocalStore;->j(Lcom/google/firebase/firestore/local/LocalStore;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/b;->b:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalStore;->getLocalDocumentsForCurrentUser()Lcom/google/firebase/firestore/local/LocalDocumentsView;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/b;->b:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/LocalStore;->getIndexManagerForCurrentUser()Lcom/google/firebase/firestore/local/IndexManager;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
