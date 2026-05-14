.class public final Lu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Lu/d;

.field public final e:I

.field public f:Lu/c;

.field public g:I

.field public h:I

.field public i:Ls/f;


# direct methods
.method public constructor <init>(Lu/d;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu/c;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lu/c;->g:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lu/c;->h:I

    iput-object p1, p0, Lu/c;->d:Lu/d;

    iput p2, p0, Lu/c;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lu/c;II)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lu/c;->g()V

    return-void

    :cond_0
    iput-object p1, p0, Lu/c;->f:Lu/c;

    iget-object v0, p1, Lu/c;->a:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p1, Lu/c;->a:Ljava/util/HashSet;

    :cond_1
    iget-object p1, p0, Lu/c;->f:Lu/c;

    iget-object p1, p1, Lu/c;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iput p2, p0, Lu/c;->g:I

    iput p3, p0, Lu/c;->h:I

    return-void
.end method

.method public final b(ILjava/util/ArrayList;Lv/n;)V
    .locals 2

    iget-object v0, p0, Lu/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/c;

    iget-object v1, v1, Lu/c;->d:Lu/d;

    invoke-static {v1, p1, p2, p3}, Lv/h;->b(Lu/d;ILjava/util/ArrayList;Lv/n;)Lv/n;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lu/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lu/c;->b:I

    return v0
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Lu/c;->d:Lu/d;

    iget v0, v0, Lu/d;->f0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lu/c;->h:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lu/c;->f:Lu/c;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lu/c;->d:Lu/d;

    iget v2, v2, Lu/d;->f0:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lu/c;->g:I

    return v0
.end method

.method public final e()Z
    .locals 5

    iget-object v0, p0, Lu/c;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/c;

    iget v3, v2, Lu/c;->e:I

    invoke-static {v3}, Ls/e;->d(I)I

    move-result v4

    iget-object v2, v2, Lu/c;->d:Lu/d;

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v3}, Le1/i;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v2, v2, Lu/d;->I:Lu/c;

    goto :goto_0

    :pswitch_1
    iget-object v2, v2, Lu/d;->H:Lu/c;

    goto :goto_0

    :pswitch_2
    iget-object v2, v2, Lu/d;->K:Lu/c;

    goto :goto_0

    :pswitch_3
    iget-object v2, v2, Lu/d;->J:Lu/c;

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v2}, Lu/c;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lu/c;->f:Lu/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lu/c;->f:Lu/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lu/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lu/c;->f:Lu/c;

    iget-object v0, v0, Lu/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lu/c;->f:Lu/c;

    iput-object v1, v0, Lu/c;->a:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Lu/c;->a:Ljava/util/HashSet;

    iput-object v1, p0, Lu/c;->f:Lu/c;

    const/4 v0, 0x0

    iput v0, p0, Lu/c;->g:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lu/c;->h:I

    iput-boolean v0, p0, Lu/c;->c:Z

    iput v0, p0, Lu/c;->b:I

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lu/c;->i:Ls/f;

    if-nez v0, :cond_0

    new-instance v0, Ls/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ls/f;-><init>(I)V

    iput-object v0, p0, Lu/c;->i:Ls/f;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ls/f;->c()V

    :goto_0
    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lu/c;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu/c;->c:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu/c;->d:Lu/d;

    iget-object v1, v1, Lu/d;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu/c;->e:I

    invoke-static {v1}, Le1/i;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
