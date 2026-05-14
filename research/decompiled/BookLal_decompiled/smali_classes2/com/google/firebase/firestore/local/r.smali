.class public final synthetic Lcom/google/firebase/firestore/local/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

.field public final synthetic b:[I

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:[Ljava/lang/String;

.field public final synthetic e:Lcom/google/firebase/firestore/util/BackgroundQueue;

.field public final synthetic f:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;[I[Ljava/lang/String;[Ljava/lang/String;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/r;->a:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/r;->b:[I

    iput-object p3, p0, Lcom/google/firebase/firestore/local/r;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/firestore/local/r;->d:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/firestore/local/r;->e:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iput-object p6, p0, Lcom/google/firebase/firestore/local/r;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v5, p0, Lcom/google/firebase/firestore/local/r;->f:Ljava/util/HashMap;

    move-object v6, p1

    check-cast v6, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/r;->b:[I

    iget-object v2, p0, Lcom/google/firebase/firestore/local/r;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/r;->d:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/r;->e:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/r;->a:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    invoke-static/range {v0 .. v6}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->e(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;[I[Ljava/lang/String;[Ljava/lang/String;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/HashMap;Landroid/database/Cursor;)V

    return-void
.end method
