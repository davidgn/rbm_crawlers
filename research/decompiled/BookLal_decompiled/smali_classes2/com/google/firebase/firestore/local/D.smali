.class public final synthetic Lcom/google/firebase/firestore/local/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

.field public final synthetic b:Lcom/google/firebase/firestore/util/BackgroundQueue;

.field public final synthetic c:Ljava/util/HashMap;

.field public final synthetic d:Lcom/google/firebase/firestore/util/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/HashMap;Lcom/google/firebase/firestore/util/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/D;->a:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/D;->b:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/D;->c:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/firebase/firestore/local/D;->d:Lcom/google/firebase/firestore/util/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/D;->b:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/D;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/D;->a:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/D;->d:Lcom/google/firebase/firestore/util/Function;

    invoke-static {v2, v0, v1, v3, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->c(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/HashMap;Lcom/google/firebase/firestore/util/Function;Landroid/database/Cursor;)V

    return-void
.end method
