.class public final synthetic Lcom/google/firebase/firestore/local/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;
.implements Lcom/google/firebase/firestore/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/firestore/local/p;->a:I

    iput-object p2, p0, Lcom/google/firebase/firestore/local/p;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/p;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/local/p;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/p;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->a(Lcom/google/firebase/firestore/core/Query;Ljava/util/Set;Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteBundleCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/p;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->b(Lcom/google/firebase/firestore/local/SQLiteBundleCache;Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/firebase/firestore/bundle/NamedQuery;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/local/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/p;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->n(Lcom/google/firebase/firestore/local/LocalStore;Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/NamedQuery;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/bundle/BundleMetadata;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->e(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/bundle/BundleMetadata;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/local/LruGarbageCollector;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->k(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LruGarbageCollector;)Lcom/google/firebase/firestore/local/LruGarbageCollector$Results;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/firestore/local/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->l(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/model/mutation/MutationBatchResult;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
