.class public abstract Lu1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:Le1/l;

.field public c:Lcom/bumptech/glide/d;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Z

.field public l:I

.field public m:I

.field public n:Lb1/e;

.field public o:Z

.field public p:Lb1/h;

.field public q:Ly1/c;

.field public r:Ljava/lang/Class;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Le1/l;->d:Le1/l;

    iput-object v0, p0, Lu1/a;->b:Le1/l;

    sget-object v0, Lcom/bumptech/glide/d;->a:Lcom/bumptech/glide/d;

    iput-object v0, p0, Lu1/a;->c:Lcom/bumptech/glide/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu1/a;->f:Z

    const/4 v1, -0x1

    iput v1, p0, Lu1/a;->l:I

    iput v1, p0, Lu1/a;->m:I

    sget-object v1, Lx1/a;->b:Lx1/a;

    iput-object v1, p0, Lu1/a;->n:Lb1/e;

    new-instance v1, Lb1/h;

    invoke-direct {v1}, Lb1/h;-><init>()V

    iput-object v1, p0, Lu1/a;->p:Lb1/h;

    new-instance v1, Ly1/c;

    invoke-direct {v1}, Lr/k;-><init>()V

    iput-object v1, p0, Lu1/a;->q:Ly1/c;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lu1/a;->r:Ljava/lang/Class;

    iput-boolean v0, p0, Lu1/a;->u:Z

    return-void
.end method

.method public static e(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lu1/a;)Lu1/a;
    .locals 2

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu1/a;->a(Lu1/a;)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lu1/a;->a:I

    iget v0, p1, Lu1/a;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lu1/a;->v:Z

    iput-boolean v0, p0, Lu1/a;->v:Z

    :cond_1
    iget v0, p1, Lu1/a;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lu1/a;->b:Le1/l;

    iput-object v0, p0, Lu1/a;->b:Le1/l;

    :cond_2
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lu1/a;->c:Lcom/bumptech/glide/d;

    iput-object v0, p0, Lu1/a;->c:Lcom/bumptech/glide/d;

    :cond_3
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lu1/a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lu1/a;->a:I

    :cond_4
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lu1/a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lu1/a;->a:I

    :cond_5
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lu1/a;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lu1/a;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lu1/a;->e:I

    iget v0, p0, Lu1/a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lu1/a;->a:I

    :cond_6
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lu1/a;->e:I

    iput v0, p0, Lu1/a;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu1/a;->d:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lu1/a;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lu1/a;->a:I

    :cond_7
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lu1/a;->f:Z

    iput-boolean v0, p0, Lu1/a;->f:Z

    :cond_8
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lu1/a;->m:I

    iput v0, p0, Lu1/a;->m:I

    iget v0, p1, Lu1/a;->l:I

    iput v0, p0, Lu1/a;->l:I

    :cond_9
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lu1/a;->n:Lb1/e;

    iput-object v0, p0, Lu1/a;->n:Lb1/e;

    :cond_a
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lu1/a;->r:Ljava/lang/Class;

    iput-object v0, p0, Lu1/a;->r:Ljava/lang/Class;

    :cond_b
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lu1/a;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lu1/a;->a:I

    :cond_c
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lu1/a;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lu1/a;->a:I

    :cond_d
    iget v0, p1, Lu1/a;->a:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lu1/a;->o:Z

    iput-boolean v0, p0, Lu1/a;->o:Z

    :cond_e
    iget v0, p1, Lu1/a;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lu1/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lu1/a;->q:Ly1/c;

    iget-object v1, p1, Lu1/a;->q:Ly1/c;

    invoke-virtual {v0, v1}, Lr/b;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lu1/a;->u:Z

    iput-boolean v0, p0, Lu1/a;->u:Z

    :cond_f
    iget v0, p0, Lu1/a;->a:I

    iget v1, p1, Lu1/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lu1/a;->a:I

    iget-object v0, p0, Lu1/a;->p:Lb1/h;

    iget-object p1, p1, Lu1/a;->p:Lb1/h;

    iget-object v0, v0, Lb1/h;->b:Ly1/c;

    iget-object p1, p1, Lb1/h;->b:Ly1/c;

    invoke-virtual {v0, p1}, Ly1/c;->i(Lr/k;)V

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public b()Lu1/a;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu1/a;

    new-instance v1, Lb1/h;

    invoke-direct {v1}, Lb1/h;-><init>()V

    iput-object v1, v0, Lu1/a;->p:Lb1/h;

    iget-object v2, p0, Lu1/a;->p:Lb1/h;

    iget-object v1, v1, Lb1/h;->b:Ly1/c;

    iget-object v2, v2, Lb1/h;->b:Ly1/c;

    invoke-virtual {v1, v2}, Ly1/c;->i(Lr/k;)V

    new-instance v1, Ly1/c;

    invoke-direct {v1}, Lr/k;-><init>()V

    iput-object v1, v0, Lu1/a;->q:Ly1/c;

    iget-object v2, p0, Lu1/a;->q:Ly1/c;

    invoke-virtual {v1, v2}, Lr/b;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lu1/a;->s:Z

    iput-boolean v1, v0, Lu1/a;->t:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c(Ljava/lang/Class;)Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu1/a;->c(Ljava/lang/Class;)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lu1/a;->r:Ljava/lang/Class;

    iget p1, p0, Lu1/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lu1/a;->a:I

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Le1/l;)Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu1/a;->d(Le1/l;)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lu1/a;->b:Le1/l;

    iget p1, p0, Lu1/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lu1/a;->a:I

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lu1/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lu1/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Ly1/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lu1/a;->e:I

    iget v3, p1, Lu1/a;->e:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lu1/a;->d:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lu1/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Ly1/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v0}, Ly1/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lu1/a;->f:Z

    iget-boolean v3, p1, Lu1/a;->f:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lu1/a;->l:I

    iget v3, p1, Lu1/a;->l:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lu1/a;->m:I

    iget v3, p1, Lu1/a;->m:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lu1/a;->o:Z

    iget-boolean v3, p1, Lu1/a;->o:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lu1/a;->b:Le1/l;

    iget-object v3, p1, Lu1/a;->b:Le1/l;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lu1/a;->c:Lcom/bumptech/glide/d;

    iget-object v3, p1, Lu1/a;->c:Lcom/bumptech/glide/d;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lu1/a;->p:Lb1/h;

    iget-object v3, p1, Lu1/a;->p:Lb1/h;

    invoke-virtual {v2, v3}, Lb1/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lu1/a;->q:Ly1/c;

    iget-object v3, p1, Lu1/a;->q:Ly1/c;

    invoke-virtual {v2, v3}, Lr/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lu1/a;->r:Ljava/lang/Class;

    iget-object v3, p1, Lu1/a;->r:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lu1/a;->n:Lb1/e;

    iget-object p1, p1, Lu1/a;->n:Lb1/e;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, v0}, Ly1/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f(Ll1/m;Ll1/d;)Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lu1/a;->f(Ll1/m;Ll1/d;)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Ll1/m;->g:Lb1/g;

    invoke-virtual {p0, v0, p1}, Lu1/a;->l(Lb1/g;Ljava/lang/Object;)Lu1/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lu1/a;->o(Lb1/l;Z)Lu1/a;

    move-result-object p1

    return-object p1
.end method

.method public final g(II)Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lu1/a;->g(II)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lu1/a;->m:I

    iput p2, p0, Lu1/a;->l:I

    iget p1, p0, Lu1/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lu1/a;->a:I

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final h(I)Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu1/a;->h(I)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lu1/a;->e:I

    iget p1, p0, Lu1/a;->a:I

    or-int/lit16 p1, p1, 0x80

    const/4 v0, 0x0

    iput-object v0, p0, Lu1/a;->d:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lu1/a;->a:I

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Ly1/k;->a:[C

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Ly1/k;->e(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly1/k;->e(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    iget v3, p0, Lu1/a;->e:I

    invoke-static {v3, v0}, Ly1/k;->e(II)I

    move-result v0

    iget-object v3, p0, Lu1/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v3}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v1, v0}, Ly1/k;->e(II)I

    move-result v0

    invoke-static {v0, v2}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v3, p0, Lu1/a;->f:Z

    invoke-static {v3, v0}, Ly1/k;->e(II)I

    move-result v0

    iget v3, p0, Lu1/a;->l:I

    invoke-static {v3, v0}, Ly1/k;->e(II)I

    move-result v0

    iget v3, p0, Lu1/a;->m:I

    invoke-static {v3, v0}, Ly1/k;->e(II)I

    move-result v0

    iget-boolean v3, p0, Lu1/a;->o:Z

    invoke-static {v3, v0}, Ly1/k;->e(II)I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ly1/k;->e(II)I

    move-result v0

    invoke-static {v1, v0}, Ly1/k;->e(II)I

    move-result v0

    invoke-static {v1, v0}, Ly1/k;->e(II)I

    move-result v0

    iget-object v1, p0, Lu1/a;->b:Le1/l;

    invoke-static {v0, v1}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lu1/a;->c:Lcom/bumptech/glide/d;

    invoke-static {v0, v1}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lu1/a;->p:Lb1/h;

    invoke-static {v0, v1}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lu1/a;->q:Ly1/c;

    invoke-static {v0, v1}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lu1/a;->r:Ljava/lang/Class;

    invoke-static {v0, v1}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lu1/a;->n:Lb1/e;

    invoke-static {v0, v1}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0, v2}, Ly1/k;->f(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu1/a;->i(Landroid/graphics/drawable/Drawable;)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lu1/a;->d:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lu1/a;->a:I

    or-int/lit8 p1, p1, 0x40

    const/4 v0, 0x0

    iput v0, p0, Lu1/a;->e:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lu1/a;->a:I

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final j()Lu1/a;
    .locals 2

    sget-object v0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/d;

    iget-boolean v1, p0, Lu1/a;->t:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0}, Lu1/a;->j()Lu1/a;

    move-result-object v0

    return-object v0

    :cond_0
    iput-object v0, p0, Lu1/a;->c:Lcom/bumptech/glide/d;

    iget v0, p0, Lu1/a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lu1/a;->a:I

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lu1/a;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(Lb1/g;Ljava/lang/Object;)Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lu1/a;->l(Lb1/g;Ljava/lang/Object;)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, LW2/B;->h(Ljava/lang/Object;)V

    iget-object v0, p0, Lu1/a;->p:Lb1/h;

    iget-object v0, v0, Lb1/h;->b:Ly1/c;

    invoke-virtual {v0, p1, p2}, Ly1/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final m(Lx1/b;)Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu1/a;->m(Lx1/b;)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lu1/a;->n:Lb1/e;

    iget p1, p0, Lu1/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lu1/a;->a:I

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final n()Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0}, Lu1/a;->n()Lu1/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu1/a;->f:Z

    iget v0, p0, Lu1/a;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lu1/a;->a:I

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final o(Lb1/l;Z)Lu1/a;
    .locals 2

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lu1/a;->o(Lb1/l;Z)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ll1/r;

    invoke-direct {v0, p1, p2}, Ll1/r;-><init>(Lb1/l;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lu1/a;->p(Ljava/lang/Class;Lb1/l;Z)Lu1/a;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lu1/a;->p(Ljava/lang/Class;Lb1/l;Z)Lu1/a;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lu1/a;->p(Ljava/lang/Class;Lb1/l;Z)Lu1/a;

    new-instance v0, Lp1/d;

    invoke-direct {v0, p1}, Lp1/d;-><init>(Lb1/l;)V

    const-class p1, Lp1/c;

    invoke-virtual {p0, p1, v0, p2}, Lu1/a;->p(Ljava/lang/Class;Lb1/l;Z)Lu1/a;

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final p(Ljava/lang/Class;Lb1/l;Z)Lu1/a;
    .locals 1

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lu1/a;->p(Ljava/lang/Class;Lb1/l;Z)Lu1/a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, LW2/B;->h(Ljava/lang/Object;)V

    iget-object v0, p0, Lu1/a;->q:Ly1/c;

    invoke-virtual {v0, p1, p2}, Ly1/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lu1/a;->a:I

    const p2, 0x10800

    or-int/2addr p2, p1

    iput p2, p0, Lu1/a;->a:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lu1/a;->u:Z

    if-eqz p3, :cond_1

    const p2, 0x30800

    or-int/2addr p1, p2

    iput p1, p0, Lu1/a;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu1/a;->o:Z

    :cond_1
    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method

.method public final q()Lu1/a;
    .locals 2

    iget-boolean v0, p0, Lu1/a;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    invoke-virtual {v0}, Lu1/a;->q()Lu1/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu1/a;->v:Z

    iget v0, p0, Lu1/a;->a:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lu1/a;->a:I

    invoke-virtual {p0}, Lu1/a;->k()V

    return-object p0
.end method
