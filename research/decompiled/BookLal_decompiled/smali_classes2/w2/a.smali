.class public final Lw2/a;
.super LL4/d;
.source "SourceFile"


# instance fields
.field public final b:Landroid/graphics/Typeface;

.field public final c:Lj1/a;

.field public d:Z


# direct methods
.method public constructor <init>(Lj1/a;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw2/a;->b:Landroid/graphics/Typeface;

    iput-object p1, p0, Lw2/a;->c:Lj1/a;

    return-void
.end method


# virtual methods
.method public final D(I)V
    .locals 2

    iget-boolean p1, p0, Lw2/a;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lw2/a;->c:Lj1/a;

    iget-object p1, p1, Lj1/a;->b:Ljava/lang/Object;

    check-cast p1, Ls2/b;

    iget-object v0, p1, Ls2/b;->v:Lw2/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lw2/a;->d:Z

    :cond_0
    iget-object v0, p1, Ls2/b;->s:Landroid/graphics/Typeface;

    iget-object v1, p0, Lw2/a;->b:Landroid/graphics/Typeface;

    if-eq v0, v1, :cond_1

    iput-object v1, p1, Ls2/b;->s:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Ls2/b;->g()V

    :cond_1
    return-void
.end method

.method public final E(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-boolean p2, p0, Lw2/a;->d:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lw2/a;->c:Lj1/a;

    iget-object p2, p2, Lj1/a;->b:Ljava/lang/Object;

    check-cast p2, Ls2/b;

    iget-object v0, p2, Ls2/b;->v:Lw2/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lw2/a;->d:Z

    :cond_0
    iget-object v0, p2, Ls2/b;->s:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    iput-object p1, p2, Ls2/b;->s:Landroid/graphics/Typeface;

    invoke-virtual {p2}, Ls2/b;->g()V

    :cond_1
    return-void
.end method
