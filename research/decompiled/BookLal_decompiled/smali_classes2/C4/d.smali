.class public final LC4/d;
.super LC4/K;
.source "SourceFile"


# instance fields
.field public final a:LE4/g;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:LQ4/s;


# direct methods
.method public constructor <init>(LE4/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC4/d;->a:LE4/g;

    iput-object p2, p0, LC4/d;->b:Ljava/lang/String;

    iput-object p3, p0, LC4/d;->c:Ljava/lang/String;

    iget-object p1, p1, LE4/g;->c:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQ4/y;

    new-instance p2, LC4/c;

    invoke-direct {p2, p1, p0}, LC4/c;-><init>(LQ4/y;LC4/d;)V

    invoke-static {p2}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object p1

    iput-object p1, p0, LC4/d;->d:LQ4/s;

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-object v2, p0, LC4/d;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v3, LD4/c;->a:[B

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final c()LC4/A;
    .locals 2

    iget-object v0, p0, LC4/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, LC4/A;->c:Ljava/util/regex/Pattern;

    invoke-static {v0}, LL4/l;->z(Ljava/lang/String;)LC4/A;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e()LQ4/i;
    .locals 1

    iget-object v0, p0, LC4/d;->d:LQ4/s;

    return-object v0
.end method
