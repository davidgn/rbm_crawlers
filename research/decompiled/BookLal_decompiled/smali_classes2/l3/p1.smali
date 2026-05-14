.class public final Ll3/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/u1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ll3/p1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll3/z1;)V
    .locals 1

    iget v0, p0, Ll3/p1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    invoke-interface {p1}, Ll3/O1;->o()V

    return-void

    :pswitch_0
    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    invoke-interface {p1}, Ll3/s;->j()V

    return-void

    :pswitch_1
    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    invoke-interface {p1}, Ll3/O1;->flush()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
