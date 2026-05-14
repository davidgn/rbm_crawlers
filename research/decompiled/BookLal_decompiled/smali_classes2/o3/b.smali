.class public final Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LQ4/j;

.field public static final e:LQ4/j;

.field public static final f:LQ4/j;

.field public static final g:LQ4/j;

.field public static final h:LQ4/j;


# instance fields
.field public final a:LQ4/j;

.field public final b:LQ4/j;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LQ4/j;->d:LQ4/j;

    const-string v0, ":status"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, Lo3/b;->d:LQ4/j;

    const-string v0, ":method"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, Lo3/b;->e:LQ4/j;

    const-string v0, ":path"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, Lo3/b;->f:LQ4/j;

    const-string v0, ":scheme"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, Lo3/b;->g:LQ4/j;

    const-string v0, ":authority"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, Lo3/b;->h:LQ4/j;

    const-string v0, ":host"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    const-string v0, ":version"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    return-void
.end method

.method public constructor <init>(LQ4/j;LQ4/j;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lo3/b;->a:LQ4/j;

    .line 7
    iput-object p2, p0, Lo3/b;->b:LQ4/j;

    .line 8
    invoke-virtual {p1}, LQ4/j;->c()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, LQ4/j;->c()I

    move-result p2

    add-int/2addr p2, p1

    .line 9
    iput p2, p0, Lo3/b;->c:I

    return-void
.end method

.method public constructor <init>(LQ4/j;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, LQ4/j;->d:LQ4/j;

    invoke-static {p2}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2}, Lo3/b;-><init>(LQ4/j;LQ4/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, LQ4/j;->d:LQ4/j;

    invoke-static {p1}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object p1

    invoke-static {p2}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object p2

    .line 4
    invoke-direct {p0, p1, p2}, Lo3/b;-><init>(LQ4/j;LQ4/j;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lo3/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lo3/b;

    iget-object v0, p1, Lo3/b;->a:LQ4/j;

    iget-object v2, p0, Lo3/b;->a:LQ4/j;

    invoke-virtual {v2, v0}, LQ4/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo3/b;->b:LQ4/j;

    iget-object p1, p1, Lo3/b;->b:LQ4/j;

    invoke-virtual {v0, p1}, LQ4/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lo3/b;->a:LQ4/j;

    invoke-virtual {v0}, LQ4/j;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo3/b;->b:LQ4/j;

    invoke-virtual {v1}, LQ4/j;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lo3/b;->a:LQ4/j;

    invoke-virtual {v0}, LQ4/j;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo3/b;->b:LQ4/j;

    invoke-virtual {v1}, LQ4/j;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, ": "

    invoke-static {v0, v2, v1}, LC/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
