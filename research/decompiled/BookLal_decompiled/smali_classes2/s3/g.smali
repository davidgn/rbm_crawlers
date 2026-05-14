.class public final Ls3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ls3/i;


# direct methods
.method public constructor <init>(Ls3/i;I)V
    .locals 1

    iput p2, p0, Ls3/g;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/g;->b:Ls3/i;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Ls3/i;->e:Ls3/h;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "success rate ejection config is null"

    invoke-static {p2, v0}, LZ2/l;->f(ZLjava/lang/String;)V

    iput-object p1, p0, Ls3/g;->b:Ls3/i;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
