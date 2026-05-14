.class public final Ll3/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    iput p3, p0, Ll3/C;->a:I

    iput-object p1, p0, Ll3/C;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Ll3/C;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Ll3/C;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-boolean v1, p0, Ll3/C;->b:Z

    iget-object v2, p0, Ll3/C;->c:Ljava/lang/Object;

    check-cast v2, Ll3/B;

    if-eqz v1, :cond_0

    iget-object v1, v2, Ll3/B;->b:Ljava/lang/Object;

    check-cast v1, Ll3/Q;

    const/4 v3, 0x1

    iput-boolean v3, v1, Ll3/Q;->l:Z

    const-wide/16 v3, 0x0

    iget-wide v5, v1, Ll3/Q;->i:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_0

    iget-object v1, v1, Ll3/Q;->k:LJ2/j;

    iput-boolean v0, v1, LJ2/j;->b:Z

    invoke-virtual {v1}, LJ2/j;->b()V

    :cond_0
    iget-object v1, v2, Ll3/B;->b:Ljava/lang/Object;

    check-cast v1, Ll3/Q;

    iput-boolean v0, v1, Ll3/Q;->q:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/C;->c:Ljava/lang/Object;

    check-cast v0, Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    iget-boolean v1, p0, Ll3/C;->b:Z

    invoke-interface {v0, v1}, Ll3/O1;->b(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ll3/C;->c:Ljava/lang/Object;

    check-cast v0, Ll3/H0;

    iget-object v0, v0, Ll3/H0;->f:Lj3/k;

    iget-boolean v1, p0, Ll3/C;->b:Z

    invoke-virtual {v0, v1}, Lj3/k;->setMessageCompression(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
