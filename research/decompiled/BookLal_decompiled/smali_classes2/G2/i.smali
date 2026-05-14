.class public final LG2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/h;
.implements Li1/r;


# instance fields
.field public final synthetic a:I

.field public b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LG2/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    iput p2, p0, LG2/i;->a:I

    iput-object p1, p0, LG2/i;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LG2/i;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b()LS1/k;
    .locals 15

    iget-object v0, p0, LG2/i;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, LS1/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, LS1/m;->a:LS1/n;

    invoke-static {v2}, LU1/a;->a(LU1/b;)LX3/a;

    move-result-object v2

    iput-object v2, v1, LS1/k;->a:LX3/a;

    new-instance v2, LT1/e;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, LT1/e;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v1, LS1/k;->b:LT1/e;

    new-instance v0, LT1/e;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, LT1/e;-><init>(Ljava/lang/Object;I)V

    new-instance v3, LT1/g;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, LT1/g;-><init>(LU1/b;LX3/a;I)V

    invoke-static {v3}, LU1/a;->a(LU1/b;)LX3/a;

    move-result-object v0

    iput-object v0, v1, LS1/k;->c:LX3/a;

    iget-object v0, v1, LS1/k;->b:LT1/e;

    new-instance v2, LT1/e;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LT1/e;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v1, LS1/k;->d:LT1/e;

    new-instance v2, LT1/e;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, LT1/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2}, LU1/a;->a(LU1/b;)LX3/a;

    move-result-object v0

    iput-object v0, v1, LS1/k;->e:LX3/a;

    iget-object v2, v1, LS1/k;->d:LT1/e;

    new-instance v3, LT1/g;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v0, v4}, LT1/g;-><init>(LU1/b;LX3/a;I)V

    invoke-static {v3}, LU1/a;->a(LU1/b;)LX3/a;

    move-result-object v0

    iput-object v0, v1, LS1/k;->f:LX3/a;

    new-instance v2, LX1/f;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, v1, LS1/k;->b:LT1/e;

    new-instance v4, LS1/t;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v0, v2, v5}, LS1/t;-><init>(LU1/b;LX3/a;LU1/b;I)V

    iget-object v2, v1, LS1/k;->a:LX3/a;

    iget-object v11, v1, LS1/k;->c:LX3/a;

    new-instance v13, LX1/d;

    move-object v5, v13

    move-object v6, v2

    move-object v7, v11

    move-object v8, v4

    move-object v9, v0

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, LX1/d;-><init>(LX3/a;LX3/a;LS1/t;LX3/a;LX3/a;)V

    new-instance v14, LY1/l;

    move-object v5, v14

    move-object v6, v3

    move-object v7, v11

    move-object v8, v0

    move-object v9, v4

    move-object v10, v2

    move-object v11, v0

    move-object v12, v0

    invoke-direct/range {v5 .. v12}, LY1/l;-><init>(LT1/e;LX3/a;LX3/a;LS1/t;LX3/a;LX3/a;LX3/a;)V

    new-instance v3, LY1/n;

    invoke-direct {v3, v2, v0, v4, v0}, LY1/n;-><init>(LX3/a;LX3/a;LS1/t;LX3/a;)V

    new-instance v0, LS1/t;

    const/4 v2, 0x0

    invoke-direct {v0, v13, v14, v3, v2}, LS1/t;-><init>(LU1/b;LX3/a;LU1/b;I)V

    invoke-static {v0}, LU1/a;->a(LU1/b;)LX3/a;

    move-result-object v0

    iput-object v0, v1, LS1/k;->l:LX3/a;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Li1/w;)Li1/q;
    .locals 2

    iget p1, p0, LG2/i;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Li1/m;

    iget-object v0, p0, LG2/i;->b:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Li1/m;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Li1/m;

    iget-object v0, p0, LG2/i;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Li1/m;-><init>(Landroid/content/Context;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
