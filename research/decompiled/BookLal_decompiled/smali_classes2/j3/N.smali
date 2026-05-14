.class public final Lj3/N;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lj3/N;


# instance fields
.field public final a:Lj3/P;

.field public final b:Ll3/t1;

.field public final c:Lj3/r0;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj3/N;

    sget-object v1, Lj3/r0;->e:Lj3/r0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lj3/N;-><init>(Lj3/P;Ll3/t1;Lj3/r0;Z)V

    sput-object v0, Lj3/N;->e:Lj3/N;

    return-void
.end method

.method public constructor <init>(Lj3/P;Ll3/t1;Lj3/r0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/N;->a:Lj3/P;

    iput-object p2, p0, Lj3/N;->b:Ll3/t1;

    const-string p1, "status"

    invoke-static {p3, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lj3/N;->c:Lj3/r0;

    iput-boolean p4, p0, Lj3/N;->d:Z

    return-void
.end method

.method public static a(Lj3/r0;)Lj3/N;
    .locals 3

    invoke-virtual {p0}, Lj3/r0;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error status shouldn\'t be OK"

    invoke-static {v0, v1}, LZ2/l;->f(ZLjava/lang/String;)V

    new-instance v0, Lj3/N;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p0, v1}, Lj3/N;-><init>(Lj3/P;Ll3/t1;Lj3/r0;Z)V

    return-object v0
.end method

.method public static b(Lj3/P;Ll3/t1;)Lj3/N;
    .locals 3

    new-instance v0, Lj3/N;

    const-string v1, "subchannel"

    invoke-static {p0, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lj3/r0;->e:Lj3/r0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lj3/N;-><init>(Lj3/P;Ll3/t1;Lj3/r0;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lj3/N;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lj3/N;

    iget-object v0, p1, Lj3/N;->a:Lj3/P;

    iget-object v2, p0, Lj3/N;->a:Lj3/P;

    invoke-static {v2, v0}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj3/N;->c:Lj3/r0;

    iget-object v2, p1, Lj3/N;->c:Lj3/r0;

    invoke-static {v0, v2}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj3/N;->b:Ll3/t1;

    iget-object v2, p1, Lj3/N;->b:Ll3/t1;

    invoke-static {v0, v2}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lj3/N;->d:Z

    iget-boolean p1, p1, Lj3/N;->d:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lj3/N;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lj3/N;->c:Lj3/r0;

    iget-object v2, p0, Lj3/N;->b:Ll3/t1;

    iget-object v3, p0, Lj3/N;->a:Lj3/P;

    filled-new-array {v3, v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "subchannel"

    iget-object v2, p0, Lj3/N;->a:Lj3/P;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "streamTracerFactory"

    iget-object v2, p0, Lj3/N;->b:Ll3/t1;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "status"

    iget-object v2, p0, Lj3/N;->c:Lj3/r0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "drop"

    iget-boolean v2, p0, Lj3/N;->d:Z

    invoke-virtual {v0, v1, v2}, LE4/d;->e(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
