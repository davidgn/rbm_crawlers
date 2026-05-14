.class public final Lf1/e;
.super LB/y;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf1/e;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LB/y;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g()Lf1/h;
    .locals 1

    iget v0, p0, Lf1/e;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lf1/j;

    invoke-direct {v0, p0}, Lf1/j;-><init>(Lf1/e;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lf1/d;

    invoke-direct {v0, p0}, Lf1/d;-><init>(Lf1/e;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
