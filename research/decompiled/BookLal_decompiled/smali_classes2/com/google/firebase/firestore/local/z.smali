.class public final synthetic Lcom/google/firebase/firestore/local/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/z;->a:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/z;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/google/firebase/firestore/local/z;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/z;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/z;->a:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iget v2, p0, Lcom/google/firebase/firestore/local/z;->c:I

    invoke-static {v1, v0, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->j(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/ArrayList;ILandroid/database/Cursor;)V

    return-void
.end method
