.class public final Le1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/f;
.implements Lc1/d;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Le1/g;

.field public final c:Le1/e;

.field public d:I

.field public e:Lb1/e;

.field public f:Ljava/util/List;

.field public l:I

.field public volatile m:Li1/p;

.field public n:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/List;Le1/g;Le1/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le1/c;->d:I

    iput-object p1, p0, Le1/c;->a:Ljava/util/List;

    iput-object p2, p0, Le1/c;->b:Le1/g;

    iput-object p3, p0, Le1/c;->c:Le1/e;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Le1/c;->f:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, p0, Le1/c;->l:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Le1/c;->m:Li1/p;

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget v0, p0, Le1/c;->l:I

    iget-object v3, p0, Le1/c;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Le1/c;->f:Ljava/util/List;

    iget v3, p0, Le1/c;->l:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Le1/c;->l:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/q;

    iget-object v3, p0, Le1/c;->n:Ljava/io/File;

    iget-object v4, p0, Le1/c;->b:Le1/g;

    iget v5, v4, Le1/g;->e:I

    iget v6, v4, Le1/g;->f:I

    iget-object v4, v4, Le1/g;->i:Lb1/h;

    invoke-interface {v0, v3, v5, v6, v4}, Li1/q;->a(Ljava/lang/Object;IILb1/h;)Li1/p;

    move-result-object v0

    iput-object v0, p0, Le1/c;->m:Li1/p;

    iget-object v0, p0, Le1/c;->m:Li1/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le1/c;->b:Le1/g;

    iget-object v3, p0, Le1/c;->m:Li1/p;

    iget-object v3, v3, Li1/p;->c:Lc1/e;

    invoke-interface {v3}, Lc1/e;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Le1/g;->c(Ljava/lang/Class;)Le1/y;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le1/c;->m:Li1/p;

    iget-object v0, v0, Li1/p;->c:Lc1/e;

    iget-object v2, p0, Le1/c;->b:Le1/g;

    iget-object v2, v2, Le1/g;->o:Lcom/bumptech/glide/d;

    invoke-interface {v0, v2, p0}, Lc1/e;->d(Lcom/bumptech/glide/d;Lc1/d;)V

    move v2, v1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    iget v0, p0, Le1/c;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Le1/c;->d:I

    iget-object v1, p0, Le1/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Le1/c;->a:Ljava/util/List;

    iget v1, p0, Le1/c;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb1/e;

    new-instance v1, Le1/d;

    iget-object v3, p0, Le1/c;->b:Le1/g;

    iget-object v4, v3, Le1/g;->n:Lb1/e;

    invoke-direct {v1, v0, v4}, Le1/d;-><init>(Lb1/e;Lb1/e;)V

    iget-object v3, v3, Le1/g;->h:Le1/m;

    invoke-virtual {v3}, Le1/m;->a()Lg1/a;

    move-result-object v3

    invoke-interface {v3, v1}, Lg1/a;->i(Lb1/e;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Le1/c;->n:Ljava/io/File;

    if-eqz v1, :cond_0

    iput-object v0, p0, Le1/c;->e:Lb1/e;

    iget-object v0, p0, Le1/c;->b:Le1/g;

    iget-object v0, v0, Le1/g;->c:Lcom/bumptech/glide/c;

    iget-object v0, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/f;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le1/c;->f:Ljava/util/List;

    iput v2, p0, Le1/c;->l:I

    goto/16 :goto_0
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Le1/c;->c:Le1/e;

    iget-object v1, p0, Le1/c;->e:Lb1/e;

    iget-object v2, p0, Le1/c;->m:Li1/p;

    iget-object v2, v2, Li1/p;->c:Lc1/e;

    sget-object v3, Lb1/a;->c:Lb1/a;

    invoke-interface {v0, v1, p1, v2, v3}, Le1/e;->c(Lb1/e;Ljava/lang/Exception;Lc1/e;Lb1/a;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Le1/c;->m:Li1/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Li1/p;->c:Lc1/e;

    invoke-interface {v0}, Lc1/e;->cancel()V

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Le1/c;->c:Le1/e;

    iget-object v1, p0, Le1/c;->e:Lb1/e;

    iget-object v2, p0, Le1/c;->m:Li1/p;

    iget-object v3, v2, Li1/p;->c:Lc1/e;

    sget-object v4, Lb1/a;->c:Lb1/a;

    iget-object v5, p0, Le1/c;->e:Lb1/e;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Le1/e;->b(Lb1/e;Ljava/lang/Object;Lc1/e;Lb1/a;Lb1/e;)V

    return-void
.end method
