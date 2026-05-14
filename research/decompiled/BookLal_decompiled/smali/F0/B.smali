.class public LF0/B;
.super Landroid/support/v4/media/session/a;
.source "SourceFile"


# static fields
.field public static d:Z = true

.field public static e:Z = true

.field public static f:Z = true

.field public static g:Z = true


# virtual methods
.method public C(Landroid/view/View;IIII)V
    .locals 1

    sget-boolean v0, LF0/B;->f:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, LA2/o;->m(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, LF0/B;->f:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public D(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-boolean v0, LF0/B;->d:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, LA2/o;->n(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, LF0/B;->d:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public E(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-boolean v0, LF0/B;->e:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, LA2/o;->x(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, LF0/B;->e:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public x(Landroid/view/View;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/a;->x(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    sget-boolean v0, LF0/B;->g:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1, p2}, LA2/o;->l(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, LF0/B;->g:Z

    :cond_1
    :goto_0
    return-void
.end method
