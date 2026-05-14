.class public final Ll3/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll3/N;


# direct methods
.method public synthetic constructor <init>(Ll3/N;I)V
    .locals 0

    iput p2, p0, Ll3/L;->a:I

    iput-object p1, p0, Ll3/L;->b:Ll3/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Ll3/L;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/L;->b:Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0}, Ll3/s;->j()V

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/L;->b:Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0}, Ll3/O1;->flush()V

    return-void

    :pswitch_1
    iget-object v0, p0, Ll3/L;->b:Ll3/N;

    invoke-virtual {v0}, Ll3/N;->q()V

    return-void

    :pswitch_2
    iget-object v0, p0, Ll3/L;->b:Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    invoke-interface {v0}, Ll3/O1;->o()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
