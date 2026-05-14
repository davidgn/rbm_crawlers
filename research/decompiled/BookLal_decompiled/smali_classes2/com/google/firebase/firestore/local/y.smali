.class public final synthetic Lcom/google/firebase/firestore/local/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;
.implements Lcom/google/firebase/firestore/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/local/y;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/firebase/firestore/local/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iget v1, p0, Lcom/google/firebase/firestore/local/y;->a:I

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->e(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;ILandroid/database/Cursor;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/y;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/LocalStore;

    iget v1, p0, Lcom/google/firebase/firestore/local/y;->a:I

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->a(Lcom/google/firebase/firestore/local/LocalStore;I)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method
