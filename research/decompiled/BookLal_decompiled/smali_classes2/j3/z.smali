.class public abstract Lj3/z;
.super Lj3/W;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj3/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj3/V;
    .locals 1

    move-object v0, p0

    check-cast v0, Lm3/g;

    iget-object v0, v0, Lm3/g;->b:Ll3/M0;

    invoke-virtual {v0}, Ll3/M0;->a()Lj3/V;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/concurrent/TimeUnit;)V
    .locals 1

    iget v0, p0, Lj3/z;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lj3/W;->c(Ljava/util/concurrent/TimeUnit;)V

    return-void

    :pswitch_0
    move-object v0, p0

    check-cast v0, Lk3/c;

    iget-object v0, v0, Lk3/c;->b:Lj3/W;

    invoke-virtual {v0, p1}, Lj3/W;->c(Ljava/util/concurrent/TimeUnit;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lj3/z;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj3/W;->d()V

    return-void

    :pswitch_0
    move-object v0, p0

    check-cast v0, Lk3/c;

    iget-object v0, v0, Lk3/c;->b:Lj3/W;

    invoke-virtual {v0}, Lj3/W;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lj3/z;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lm3/g;

    const-string v2, "delegate"

    iget-object v1, v1, Lm3/g;->b:Ll3/M0;

    invoke-virtual {v0, v1, v2}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lk3/c;

    const-string v2, "delegate"

    iget-object v1, v1, Lk3/c;->b:Lj3/W;

    invoke-virtual {v0, v1, v2}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
