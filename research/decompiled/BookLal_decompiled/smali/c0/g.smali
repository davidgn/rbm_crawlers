.class public final Lc0/g;
.super La/a;
.source "SourceFile"


# instance fields
.field public final b:Lc0/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc0/f;

    invoke-direct {v0, p1}, Lc0/f;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lc0/g;->b:Lc0/f;

    return-void
.end method


# virtual methods
.method public final B(Z)V
    .locals 2

    sget-object v0, Landroidx/emoji2/text/j;->j:Landroidx/emoji2/text/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc0/g;->b:Lc0/f;

    if-nez v0, :cond_1

    iput-boolean p1, v1, Lc0/f;->d:Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Lc0/f;->B(Z)V

    :goto_1
    return-void
.end method

.method public final g([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/j;->j:Landroidx/emoji2/text/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lc0/g;->b:Lc0/f;

    invoke-virtual {v0, p1}, Lc0/f;->g([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method public final x(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/j;->j:Landroidx/emoji2/text/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lc0/g;->b:Lc0/f;

    invoke-virtual {v0, p1}, Lc0/f;->x(Z)V

    return-void
.end method
