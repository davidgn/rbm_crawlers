.class public final Ll/f;
.super Lk/x;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ll/k;


# direct methods
.method public constructor <init>(Ll/k;Landroid/content/Context;Lk/F;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Ll/f;->l:I

    .line 8
    iput-object p1, p0, Ll/f;->m:Ll/k;

    const/4 v6, 0x0

    const v2, 0x7f040022

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Lk/x;-><init>(ILandroid/content/Context;Landroid/view/View;Lk/m;Z)V

    .line 10
    iget-object p2, p3, Lk/F;->F:Lk/o;

    .line 11
    invoke-virtual {p2}, Lk/o;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    iget-object p2, p1, Ll/k;->o:Ll/i;

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p1, Ll/k;->m:Lk/B;

    .line 14
    check-cast p2, Landroid/view/View;

    .line 15
    :cond_0
    iput-object p2, p0, Lk/x;->e:Landroid/view/View;

    .line 16
    :cond_1
    iget-object p1, p1, Ll/k;->C:Lj1/a;

    .line 17
    iput-object p1, p0, Lk/x;->h:Lk/y;

    .line 18
    iget-object p2, p0, Lk/x;->i:Lk/u;

    if-eqz p2, :cond_2

    .line 19
    invoke-interface {p2, p1}, Lk/z;->f(Lk/y;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Ll/k;Landroid/content/Context;Lk/m;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Ll/f;->l:I

    .line 1
    iput-object p1, p0, Ll/f;->m:Ll/k;

    const v2, 0x7f040022

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lk/x;-><init>(ILandroid/content/Context;Landroid/view/View;Lk/m;Z)V

    const p2, 0x800005

    .line 3
    iput p2, p0, Lk/x;->f:I

    .line 4
    iget-object p1, p1, Ll/k;->C:Lj1/a;

    .line 5
    iput-object p1, p0, Lk/x;->h:Lk/y;

    .line 6
    iget-object p2, p0, Lk/x;->i:Lk/u;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2, p1}, Lk/z;->f(Lk/y;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Ll/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll/f;->m:Ll/k;

    iget-object v1, v0, Ll/k;->c:Lk/m;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lk/m;->c(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Ll/k;->y:Ll/f;

    invoke-super {p0}, Lk/x;->c()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Ll/f;->m:Ll/k;

    iput-object v0, v1, Ll/k;->z:Ll/f;

    const/4 v0, 0x0

    iput v0, v1, Ll/k;->D:I

    invoke-super {p0}, Lk/x;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
