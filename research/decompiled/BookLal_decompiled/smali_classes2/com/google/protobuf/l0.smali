.class public final Lcom/google/protobuf/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/protobuf/E;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/E;-><init>(I)V

    sput-object v0, Lcom/google/protobuf/l0;->b:Lcom/google/protobuf/E;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4
    new-instance p1, Lcom/google/protobuf/k0;

    .line 5
    :try_start_0
    const-string v1, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 6
    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/r0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    sget-object v1, Lcom/google/protobuf/l0;->b:Lcom/google/protobuf/E;

    :goto_0
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [Lcom/google/protobuf/r0;

    sget-object v3, Lcom/google/protobuf/E;->b:Lcom/google/protobuf/E;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v2, p1, Lcom/google/protobuf/k0;->a:[Lcom/google/protobuf/r0;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/google/protobuf/Z;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    return-void

    .line 13
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/protobuf/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/protobuf/Z;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 3
    iput-object p0, p1, Lcom/google/protobuf/u;->c:Lcom/google/protobuf/l0;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/m;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/protobuf/m;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/m;->size()I

    move-result v0

    sget-object v1, Lcom/google/protobuf/I0;->n:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/google/protobuf/I0;->B(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/m;

    invoke-virtual {v3}, Lcom/google/protobuf/m;->size()I

    move-result v3

    if-lt v3, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/I0;->B(I)I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/m;

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/m;

    invoke-virtual {v3}, Lcom/google/protobuf/m;->size()I

    move-result v3

    if-ge v3, v0, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/m;

    new-instance v4, Lcom/google/protobuf/I0;

    invoke-direct {v4, v3, v1}, Lcom/google/protobuf/I0;-><init>(Lcom/google/protobuf/m;Lcom/google/protobuf/m;)V

    move-object v1, v4

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/protobuf/I0;

    invoke-direct {v0, v1, p1}, Lcom/google/protobuf/I0;-><init>(Lcom/google/protobuf/m;Lcom/google/protobuf/m;)V

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/google/protobuf/I0;->n:[I

    iget v1, v0, Lcom/google/protobuf/I0;->d:I

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/protobuf/I0;->B(I)I

    move-result p1

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/m;

    invoke-virtual {v1}, Lcom/google/protobuf/m;->size()I

    move-result v1

    if-ge v1, p1, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/m;

    new-instance v1, Lcom/google/protobuf/I0;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/I0;-><init>(Lcom/google/protobuf/m;Lcom/google/protobuf/m;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    instance-of v0, p1, Lcom/google/protobuf/I0;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/google/protobuf/I0;

    iget-object v0, p1, Lcom/google/protobuf/I0;->e:Lcom/google/protobuf/m;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/l0;->a(Lcom/google/protobuf/m;)V

    iget-object p1, p1, Lcom/google/protobuf/I0;->f:Lcom/google/protobuf/m;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/l0;->a(Lcom/google/protobuf/m;)V

    :goto_3
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->y0(IZ)V

    return-void
.end method

.method public c(ILcom/google/protobuf/m;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->A0(ILcom/google/protobuf/m;)V

    return-void
.end method

.method public d(ID)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/u;->E0(IJ)V

    return-void
.end method

.method public e(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->G0(II)V

    return-void
.end method

.method public f(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->C0(II)V

    return-void
.end method

.method public g(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/u;->E0(IJ)V

    return-void
.end method

.method public h(IF)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->C0(II)V

    return-void
.end method

.method public i(ILjava/lang/Object;Lcom/google/protobuf/J0;)V
    .locals 2

    check-cast p2, Lcom/google/protobuf/t0;

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/u;->M0(II)V

    iget-object v1, v0, Lcom/google/protobuf/u;->c:Lcom/google/protobuf/l0;

    invoke-interface {p3, p2, v1}, Lcom/google/protobuf/J0;->a(Ljava/lang/Object;Lcom/google/protobuf/l0;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->M0(II)V

    return-void
.end method

.method public j(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->G0(II)V

    return-void
.end method

.method public k(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/u;->P0(IJ)V

    return-void
.end method

.method public l(ILjava/lang/Object;Lcom/google/protobuf/J0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    check-cast p2, Lcom/google/protobuf/t0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/u;->I0(ILcom/google/protobuf/t0;Lcom/google/protobuf/J0;)V

    return-void
.end method

.method public m(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->C0(II)V

    return-void
.end method

.method public n(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/u;->E0(IJ)V

    return-void
.end method

.method public o(II)V
    .locals 1

    shl-int/lit8 v0, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->N0(II)V

    return-void
.end method

.method public p(IJ)V
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p2, v0

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/u;->P0(IJ)V

    return-void
.end method

.method public q(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/u;->N0(II)V

    return-void
.end method

.method public r(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/u;->P0(IJ)V

    return-void
.end method
