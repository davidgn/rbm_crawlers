.class public abstract LY0/X0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC4/A;

.field public static final b:LC4/C;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, LC4/A;->c:Ljava/util/regex/Pattern;

    const-string v0, "application/json"

    invoke-static {v0}, LL4/l;->z(Ljava/lang/String;)LC4/A;

    move-result-object v0

    sput-object v0, LY0/X0;->a:LC4/A;

    new-instance v0, LC4/B;

    invoke-direct {v0}, LC4/B;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "unit"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LD4/c;->b(Ljava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v0, LC4/B;->s:I

    invoke-static {v1}, LD4/c;->b(Ljava/util/concurrent/TimeUnit;)I

    move-result v2

    iput v2, v0, LC4/B;->t:I

    invoke-static {v1}, LD4/c;->b(Ljava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, LC4/B;->u:I

    new-instance v1, LC4/C;

    invoke-direct {v1, v0}, LC4/C;-><init>(LC4/B;)V

    sput-object v1, LY0/X0;->b:LC4/C;

    return-void
.end method
