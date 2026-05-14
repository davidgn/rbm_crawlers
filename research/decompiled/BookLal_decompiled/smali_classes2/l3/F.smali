.class public final Ll3/F;
.super LU0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Lj3/j;

.field public final e:Lj3/r0;


# direct methods
.method public constructor <init>(Ll3/C0;Lj3/j;Lj3/r0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/F;->c:I

    .line 5
    iput-object p2, p0, Ll3/F;->d:Lj3/j;

    iput-object p3, p0, Ll3/F;->e:Lj3/r0;

    .line 6
    iget-object p1, p1, Ll3/C0;->e:Lj3/u;

    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p1, p2}, LU0/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ll3/H0;Lj3/j;Lj3/r0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll3/F;->c:I

    .line 1
    iget-object p1, p1, Ll3/H0;->c:Lj3/u;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, LU0/c;-><init>(Ljava/lang/Object;I)V

    .line 3
    iput-object p2, p0, Ll3/F;->d:Lj3/j;

    .line 4
    iput-object p3, p0, Ll3/F;->e:Lj3/r0;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Ll3/F;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj3/f0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Ll3/F;->d:Lj3/j;

    iget-object v2, p0, Ll3/F;->e:Lj3/r0;

    invoke-virtual {v1, v2, v0}, Lj3/j;->onClose(Lj3/r0;Lj3/f0;)V

    return-void

    :pswitch_0
    new-instance v0, Lj3/f0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Ll3/F;->d:Lj3/j;

    iget-object v2, p0, Ll3/F;->e:Lj3/r0;

    invoke-virtual {v1, v2, v0}, Lj3/j;->onClose(Lj3/r0;Lj3/f0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
