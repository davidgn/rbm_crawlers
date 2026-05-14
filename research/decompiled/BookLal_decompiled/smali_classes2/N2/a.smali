.class public final LN2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LN2/a;

.field public static final c:LN2/a;


# instance fields
.field public final a:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, LN2/m;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, LN2/a;->c:LN2/a;

    sput-object v1, LN2/a;->b:LN2/a;

    goto :goto_0

    :cond_0
    new-instance v0, LN2/a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, LN2/a;-><init>(ZLjava/lang/RuntimeException;)V

    sput-object v0, LN2/a;->c:LN2/a;

    new-instance v0, LN2/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, LN2/a;-><init>(ZLjava/lang/RuntimeException;)V

    sput-object v0, LN2/a;->b:LN2/a;

    :goto_0
    return-void
.end method

.method public constructor <init>(ZLjava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LN2/a;->a:Ljava/lang/RuntimeException;

    return-void
.end method
