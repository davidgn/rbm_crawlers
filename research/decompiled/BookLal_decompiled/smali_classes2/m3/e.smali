.class public abstract Lm3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo3/b;

.field public static final b:Lo3/b;

.field public static final c:Lo3/b;

.field public static final d:Lo3/b;

.field public static final e:Lo3/b;

.field public static final f:Lo3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo3/b;

    sget-object v1, Lo3/b;->g:LQ4/j;

    const-string v2, "https"

    invoke-direct {v0, v1, v2}, Lo3/b;-><init>(LQ4/j;Ljava/lang/String;)V

    sput-object v0, Lm3/e;->a:Lo3/b;

    new-instance v0, Lo3/b;

    const-string v2, "http"

    invoke-direct {v0, v1, v2}, Lo3/b;-><init>(LQ4/j;Ljava/lang/String;)V

    sput-object v0, Lm3/e;->b:Lo3/b;

    new-instance v0, Lo3/b;

    sget-object v1, Lo3/b;->e:LQ4/j;

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Lo3/b;-><init>(LQ4/j;Ljava/lang/String;)V

    sput-object v0, Lm3/e;->c:Lo3/b;

    new-instance v0, Lo3/b;

    const-string v2, "GET"

    invoke-direct {v0, v1, v2}, Lo3/b;-><init>(LQ4/j;Ljava/lang/String;)V

    sput-object v0, Lm3/e;->d:Lo3/b;

    new-instance v0, Lo3/b;

    sget-object v1, Ll3/b0;->i:Lj3/a0;

    iget-object v1, v1, Lj3/c0;->a:Ljava/lang/String;

    const-string v2, "application/grpc"

    invoke-direct {v0, v1, v2}, Lo3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lm3/e;->e:Lo3/b;

    new-instance v0, Lo3/b;

    const-string v1, "te"

    const-string v2, "trailers"

    invoke-direct {v0, v1, v2}, Lo3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lm3/e;->f:Lo3/b;

    return-void
.end method
