.class public final Ll3/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ll3/b1;Ls3/e;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Ll3/t1;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ll3/t1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll3/v1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll3/t1;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ll3/t1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lj3/B;
    .locals 2

    iget v0, p0, Ll3/t1;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ls3/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Ll3/t1;->b:Ljava/lang/Object;

    check-cast v1, Ls3/e;

    iput-object v1, v0, Ls3/j;->a:Ls3/e;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ll3/t1;->b:Ljava/lang/Object;

    check-cast v0, Ll3/v1;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
