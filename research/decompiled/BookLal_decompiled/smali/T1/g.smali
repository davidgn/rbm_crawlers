.class public final LT1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU1/b;


# instance fields
.field public final synthetic a:I

.field public final b:LU1/b;

.field public final c:LX3/a;


# direct methods
.method public synthetic constructor <init>(LU1/b;LX3/a;I)V
    .locals 0

    iput p3, p0, LT1/g;->a:I

    iput-object p1, p0, LT1/g;->b:LU1/b;

    iput-object p2, p0, LT1/g;->c:LX3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, LT1/g;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ld3/a;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ld3/a;-><init>(I)V

    new-instance v3, Lz2/e;

    const/16 v0, 0xf

    invoke-direct {v3, v0}, Lz2/e;-><init>(I)V

    sget-object v4, LZ1/a;->f:LZ1/a;

    iget-object v0, p0, LT1/g;->b:LU1/b;

    check-cast v0, LT1/e;

    invoke-virtual {v0}, LT1/e;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v7, LZ1/h;

    move-object v5, v0

    check-cast v5, LZ1/j;

    iget-object v6, p0, LT1/g;->c:LX3/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LZ1/h;-><init>(Lb2/a;Lb2/a;LZ1/a;LZ1/j;LX3/a;)V

    return-object v7

    :pswitch_0
    iget-object v0, p0, LT1/g;->b:LU1/b;

    check-cast v0, LT1/e;

    iget-object v0, v0, LT1/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LT1/g;->c:LX3/a;

    check-cast v1, LT1/e;

    invoke-virtual {v1}, LT1/e;->get()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, LT1/f;

    check-cast v1, LT1/d;

    invoke-direct {v2, v0, v1}, LT1/f;-><init>(Landroid/content/Context;LT1/d;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
