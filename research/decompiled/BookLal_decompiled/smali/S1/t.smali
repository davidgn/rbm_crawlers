.class public final LS1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU1/b;


# instance fields
.field public final synthetic a:I

.field public final b:LU1/b;

.field public final c:LX3/a;

.field public final d:LU1/b;


# direct methods
.method public synthetic constructor <init>(LU1/b;LX3/a;LU1/b;I)V
    .locals 0

    iput p4, p0, LS1/t;->a:I

    iput-object p1, p0, LS1/t;->b:LU1/b;

    iput-object p2, p0, LS1/t;->c:LX3/a;

    iput-object p3, p0, LS1/t;->d:LU1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget v0, p0, LS1/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LS1/t;->b:LU1/b;

    check-cast v0, LT1/e;

    iget-object v0, v0, LT1/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LS1/t;->c:LX3/a;

    invoke-interface {v1}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ1/d;

    iget-object v2, p0, LS1/t;->d:LU1/b;

    check-cast v2, LX1/f;

    invoke-virtual {v2}, LX1/f;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY1/b;

    new-instance v3, LY1/d;

    invoke-direct {v3, v0, v1, v2}, LY1/d;-><init>(Landroid/content/Context;LZ1/d;LY1/b;)V

    return-object v3

    :pswitch_0
    new-instance v5, Ld3/a;

    const/16 v0, 0x10

    invoke-direct {v5, v0}, Ld3/a;-><init>(I)V

    new-instance v6, Lz2/e;

    const/16 v0, 0xf

    invoke-direct {v6, v0}, Lz2/e;-><init>(I)V

    iget-object v0, p0, LS1/t;->b:LU1/b;

    check-cast v0, LX1/d;

    invoke-virtual {v0}, LX1/d;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LX1/e;

    iget-object v0, p0, LS1/t;->c:LX3/a;

    check-cast v0, LY1/l;

    invoke-virtual {v0}, LY1/l;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LY1/k;

    iget-object v0, p0, LS1/t;->d:LU1/b;

    check-cast v0, LY1/n;

    invoke-virtual {v0}, LY1/n;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, LY1/m;

    new-instance v0, LS1/s;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, LS1/s;-><init>(Lb2/a;Lb2/a;LX1/e;LY1/k;LY1/m;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
