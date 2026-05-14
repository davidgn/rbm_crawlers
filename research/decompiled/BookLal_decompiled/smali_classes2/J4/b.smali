.class public final LJ4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LQ4/j;

.field public static final e:LQ4/j;

.field public static final f:LQ4/j;

.field public static final g:LQ4/j;

.field public static final h:LQ4/j;

.field public static final i:LQ4/j;


# instance fields
.field public final a:LQ4/j;

.field public final b:LQ4/j;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LQ4/j;->d:LQ4/j;

    const-string v0, ":"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, LJ4/b;->d:LQ4/j;

    const-string v0, ":status"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, LJ4/b;->e:LQ4/j;

    const-string v0, ":method"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, LJ4/b;->f:LQ4/j;

    const-string v0, ":path"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, LJ4/b;->g:LQ4/j;

    const-string v0, ":scheme"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, LJ4/b;->h:LQ4/j;

    const-string v0, ":authority"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, LJ4/b;->i:LQ4/j;

    return-void
.end method

.method public constructor <init>(LQ4/j;LQ4/j;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LJ4/b;->a:LQ4/j;

    .line 3
    iput-object p2, p0, LJ4/b;->b:LQ4/j;

    .line 4
    invoke-virtual {p1}, LQ4/j;->c()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, LQ4/j;->c()I

    move-result p2

    add-int/2addr p2, p1

    .line 5
    iput p2, p0, LJ4/b;->c:I

    return-void
.end method

.method public constructor <init>(LQ4/j;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, LQ4/j;->d:LQ4/j;

    invoke-static {p2}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LJ4/b;-><init>(LQ4/j;LQ4/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, LQ4/j;->d:LQ4/j;

    invoke-static {p1}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object p1

    invoke-static {p2}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LJ4/b;-><init>(LQ4/j;LQ4/j;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LJ4/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LJ4/b;

    iget-object v1, p1, LJ4/b;->a:LQ4/j;

    iget-object v3, p0, LJ4/b;->a:LQ4/j;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, LJ4/b;->b:LQ4/j;

    iget-object p1, p1, LJ4/b;->b:LQ4/j;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LJ4/b;->a:LQ4/j;

    invoke-virtual {v0}, LQ4/j;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LJ4/b;->b:LQ4/j;

    invoke-virtual {v1}, LQ4/j;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LJ4/b;->a:LQ4/j;

    invoke-virtual {v1}, LQ4/j;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJ4/b;->b:LQ4/j;

    invoke-virtual {v1}, LQ4/j;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
