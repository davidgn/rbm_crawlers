.class public final synthetic LY1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p5, p0, LY1/f;->a:I

    iput-object p1, p0, LY1/f;->c:Ljava/lang/Object;

    iput-object p2, p0, LY1/f;->d:Ljava/lang/Object;

    iput p3, p0, LY1/f;->b:I

    iput-object p4, p0, LY1/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, LY1/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LY1/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iget-object v1, p0, LY1/f;->d:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p0, LY1/f;->b:I

    iget-object v3, p0, LY1/f;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->a(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;[BILjava/util/Map;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LY1/f;->d:Ljava/lang/Object;

    check-cast v0, LS1/j;

    iget v1, p0, LY1/f;->b:I

    iget-object v2, p0, LY1/f;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget-object v3, p0, LY1/f;->c:Ljava/lang/Object;

    check-cast v3, LY1/k;

    iget-object v4, v3, LY1/k;->f:La2/c;

    :try_start_0
    iget-object v5, v3, LY1/k;->c:LZ1/d;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, LQ1/b;

    const/4 v7, 0x6

    invoke-direct {v6, v5, v7}, LQ1/b;-><init>(Ljava/lang/Object;I)V

    move-object v5, v4

    check-cast v5, LZ1/h;

    invoke-virtual {v5, v6}, LZ1/h;->m(La2/b;)Ljava/lang/Object;

    iget-object v5, v3, LY1/k;->a:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0, v1}, LY1/k;->a(LS1/j;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v5, LY1/g;

    invoke-direct {v5, v3, v0, v1}, LY1/g;-><init>(LY1/k;LS1/j;I)V

    check-cast v4, LZ1/h;

    invoke-virtual {v4, v5}, LZ1/h;->m(La2/b;)Ljava/lang/Object;
    :try_end_0
    .catch La2/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object v3, v3, LY1/k;->d:LY1/d;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, LY1/d;->a(LS1/j;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
