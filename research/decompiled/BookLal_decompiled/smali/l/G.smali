.class public final Ll/G;
.super Ll/t0;
.source "SourceFile"


# instance fields
.field public final synthetic o:Ll/N;

.field public final synthetic p:Ll/Q;


# direct methods
.method public constructor <init>(Ll/Q;Ll/Q;Ll/N;)V
    .locals 0

    iput-object p1, p0, Ll/G;->p:Ll/Q;

    iput-object p3, p0, Ll/G;->o:Ll/N;

    invoke-direct {p0, p2}, Ll/t0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lk/D;
    .locals 1

    iget-object v0, p0, Ll/G;->o:Ll/N;

    return-object v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Ll/G;->p:Ll/Q;

    invoke-virtual {v0}, Ll/Q;->getInternalPopup()Ll/P;

    move-result-object v1

    invoke-interface {v1}, Ll/P;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ll/I;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Ll/I;->a(Landroid/view/View;)I

    move-result v2

    iget-object v0, v0, Ll/Q;->f:Ll/P;

    invoke-interface {v0, v1, v2}, Ll/P;->n(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
