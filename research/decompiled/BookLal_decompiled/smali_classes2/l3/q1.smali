.class public final Ll3/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/u1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Ll3/q1;->a:I

    iput p1, p0, Ll3/q1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll3/z1;)V
    .locals 1

    iget v0, p0, Ll3/q1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    iget v0, p0, Ll3/q1;->b:I

    invoke-interface {p1, v0}, Ll3/O1;->l(I)V

    return-void

    :pswitch_0
    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    iget v0, p0, Ll3/q1;->b:I

    invoke-interface {p1, v0}, Ll3/s;->c(I)V

    return-void

    :pswitch_1
    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    iget v0, p0, Ll3/q1;->b:I

    invoke-interface {p1, v0}, Ll3/s;->m(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
