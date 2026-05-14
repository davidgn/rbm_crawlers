.class public final Lp1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La1/d;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/bumptech/glide/i;

.field public final e:Lf1/a;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/h;

.field public i:Lp1/e;

.field public j:Z

.field public k:Lp1/e;

.field public l:Landroid/graphics/Bitmap;

.field public m:Lp1/e;

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;La1/d;IILandroid/graphics/Bitmap;)V
    .locals 7

    sget-object v0, Lk1/a;->b:Lk1/a;

    iget-object v1, p1, Lcom/bumptech/glide/b;->a:Lf1/a;

    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/c;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/bumptech/glide/h;

    iget-object v4, p1, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/b;

    iget-object v5, p1, Lcom/bumptech/glide/i;->b:Landroid/content/Context;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, p1, v6, v5}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V

    sget-object p1, Lcom/bumptech/glide/i;->q:Lu1/d;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/h;->r(Lu1/a;)Lcom/bumptech/glide/h;

    move-result-object p1

    sget-object v3, Le1/l;->b:Le1/l;

    new-instance v4, Lu1/d;

    invoke-direct {v4}, Lu1/a;-><init>()V

    invoke-virtual {v4, v3}, Lu1/a;->d(Le1/l;)Lu1/a;

    move-result-object v3

    check-cast v3, Lu1/d;

    invoke-virtual {v3}, Lu1/a;->q()Lu1/a;

    move-result-object v3

    check-cast v3, Lu1/d;

    invoke-virtual {v3}, Lu1/a;->n()Lu1/a;

    move-result-object v3

    check-cast v3, Lu1/d;

    invoke-virtual {v3, p3, p4}, Lu1/a;->g(II)Lu1/a;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/h;->r(Lu1/a;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lp1/g;->c:Ljava/util/ArrayList;

    iput-object v2, p0, Lp1/g;->d:Lcom/bumptech/glide/i;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v2, LA2/r;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LA2/r;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p3, p4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lp1/g;->e:Lf1/a;

    iput-object p3, p0, Lp1/g;->b:Landroid/os/Handler;

    iput-object p1, p0, Lp1/g;->h:Lcom/bumptech/glide/h;

    iput-object p2, p0, Lp1/g;->a:La1/d;

    invoke-virtual {p0, v0, p5}, Lp1/g;->c(Lb1/l;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-boolean v0, p0, Lp1/g;->f:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lp1/g;->g:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lp1/g;->m:Lp1/e;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lp1/g;->m:Lp1/e;

    invoke-virtual {p0, v0}, Lp1/g;->b(Lp1/e;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp1/g;->g:Z

    iget-object v1, p0, Lp1/g;->a:La1/d;

    iget-object v2, v1, La1/d;->l:La1/b;

    iget v3, v2, La1/b;->c:I

    if-lez v3, :cond_4

    iget v4, v1, La1/d;->k:I

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    if-ltz v4, :cond_3

    if-ge v4, v3, :cond_3

    iget-object v2, v2, La1/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1/a;

    iget v2, v2, La1/a;->i:I

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iget v2, v1, La1/d;->k:I

    add-int/2addr v2, v0

    iget-object v5, v1, La1/d;->l:La1/b;

    iget v5, v5, La1/b;->c:I

    rem-int/2addr v2, v5

    iput v2, v1, La1/d;->k:I

    new-instance v5, Lp1/e;

    iget-object v6, p0, Lp1/g;->b:Landroid/os/Handler;

    invoke-direct {v5, v6, v2, v3, v4}, Lp1/e;-><init>(Landroid/os/Handler;IJ)V

    iput-object v5, p0, Lp1/g;->k:Lp1/e;

    iget-object v2, p0, Lp1/g;->h:Lcom/bumptech/glide/h;

    new-instance v3, Lx1/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lx1/b;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lu1/d;

    invoke-direct {v4}, Lu1/a;-><init>()V

    invoke-virtual {v4, v3}, Lu1/a;->m(Lx1/b;)Lu1/a;

    move-result-object v3

    check-cast v3, Lu1/d;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/h;->r(Lu1/a;)Lcom/bumptech/glide/h;

    move-result-object v2

    iput-object v1, v2, Lcom/bumptech/glide/h;->B:Ljava/lang/Object;

    iput-boolean v0, v2, Lcom/bumptech/glide/h;->D:Z

    iget-object v0, p0, Lp1/g;->k:Lp1/e;

    sget-object v1, Ly1/f;->a:LI/i;

    invoke-virtual {v2, v0, v2, v1}, Lcom/bumptech/glide/h;->u(Lv1/d;Lu1/a;LI/i;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final b(Lp1/e;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp1/g;->g:Z

    iget-boolean v0, p0, Lp1/g;->j:Z

    const/4 v1, 0x2

    iget-object v2, p0, Lp1/g;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lp1/g;->f:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lp1/g;->m:Lp1/e;

    return-void

    :cond_1
    iget-object v0, p1, Lp1/e;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lp1/g;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lp1/g;->e:Lf1/a;

    invoke-interface {v3, v0}, Lf1/a;->e(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lp1/g;->l:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lp1/g;->i:Lp1/e;

    iput-object p1, p0, Lp1/g;->i:Lp1/e;

    iget-object p1, p0, Lp1/g;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp1/f;

    check-cast v4, Lp1/c;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    :goto_1
    instance-of v6, v5, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    invoke-virtual {v4}, Lp1/c;->stop()V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v5, v4, Lp1/c;->a:Lp1/b;

    iget-object v5, v5, Lp1/b;->a:Lp1/g;

    iget-object v6, v5, Lp1/g;->i:Lp1/e;

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    iget v6, v6, Lp1/e;->b:I

    goto :goto_2

    :cond_5
    move v6, v7

    :goto_2
    iget-object v5, v5, Lp1/g;->a:La1/d;

    iget-object v5, v5, La1/d;->l:La1/b;

    iget v5, v5, La1/b;->c:I

    add-int/lit8 v5, v5, -0x1

    if-ne v6, v5, :cond_6

    iget v5, v4, Lp1/c;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lp1/c;->f:I

    :cond_6
    iget v5, v4, Lp1/c;->l:I

    if-eq v5, v7, :cond_7

    iget v6, v4, Lp1/c;->f:I

    if-lt v6, v5, :cond_7

    invoke-virtual {v4}, Lp1/c;->stop()V

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    invoke-virtual {p0}, Lp1/g;->a()V

    return-void
.end method

.method public final c(Lb1/l;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lp1/g;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lp1/g;->h:Lcom/bumptech/glide/h;

    new-instance v1, Lu1/d;

    invoke-direct {v1}, Lu1/a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lu1/a;->o(Lb1/l;Z)Lu1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->r(Lu1/a;)Lcom/bumptech/glide/h;

    move-result-object p1

    iput-object p1, p0, Lp1/g;->h:Lcom/bumptech/glide/h;

    invoke-static {p2}, Ly1/k;->c(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lp1/g;->n:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lp1/g;->o:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lp1/g;->p:I

    return-void
.end method
