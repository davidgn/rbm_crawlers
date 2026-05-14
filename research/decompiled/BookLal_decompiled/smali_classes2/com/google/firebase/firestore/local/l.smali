.class public final synthetic Lcom/google/firebase/firestore/local/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/local/LocalStore;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/firebase/firestore/local/l;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/l;->b:Lcom/google/firebase/firestore/local/LocalStore;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/l;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/l;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/firebase/firestore/local/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/l;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/TargetData;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/l;->b:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/l;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/local/LocalStore;->i(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/local/TargetData;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/l;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/l;->b:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/l;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/remote/RemoteEvent;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/local/LocalStore;->f(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
