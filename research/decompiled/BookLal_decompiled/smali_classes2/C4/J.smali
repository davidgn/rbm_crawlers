.class public final LC4/J;
.super LC4/K;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final c:Ljava/lang/Object;

.field public final d:LQ4/i;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JLQ4/i;I)V
    .locals 0

    iput p5, p0, LC4/J;->a:I

    iput-object p1, p0, LC4/J;->c:Ljava/lang/Object;

    iput-wide p2, p0, LC4/J;->b:J

    iput-object p4, p0, LC4/J;->d:LQ4/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget v0, p0, LC4/J;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, LC4/J;->b:J

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, LC4/J;->b:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()LC4/A;
    .locals 2

    iget-object v0, p0, LC4/J;->c:Ljava/lang/Object;

    iget v1, p0, LC4/J;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, LC4/A;->c:Ljava/util/regex/Pattern;

    invoke-static {v0}, LL4/l;->z(Ljava/lang/String;)LC4/A;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    check-cast v0, LC4/A;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()LQ4/i;
    .locals 1

    iget v0, p0, LC4/J;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC4/J;->d:LQ4/i;

    check-cast v0, LQ4/s;

    return-object v0

    :pswitch_0
    iget-object v0, p0, LC4/J;->d:LQ4/i;

    check-cast v0, LQ4/g;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
