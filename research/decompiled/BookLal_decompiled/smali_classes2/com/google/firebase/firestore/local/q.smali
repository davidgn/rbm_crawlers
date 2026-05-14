.class public final synthetic Lcom/google/firebase/firestore/local/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

.field public final synthetic c:Lcom/google/firebase/firestore/util/BackgroundQueue;

.field public final synthetic d:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/HashMap;I)V
    .locals 0

    iput p4, p0, Lcom/google/firebase/firestore/local/q;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/q;->b:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/q;->c:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/q;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/firebase/firestore/local/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/q;->d:Ljava/util/HashMap;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/q;->c:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/q;->b:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    invoke-static {v2, v1, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->f(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/HashMap;Landroid/database/Cursor;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/q;->d:Ljava/util/HashMap;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/q;->c:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/q;->b:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    invoke-static {v2, v1, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->b(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/HashMap;Landroid/database/Cursor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
