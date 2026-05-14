.class public final Ll3/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final a:J

.field public final b:LJ2/j;

.field public c:Ljava/util/LinkedHashMap;

.field public d:Z

.field public e:Lj3/s0;

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ll3/g0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll3/g0;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(JLJ2/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ll3/g0;->c:Ljava/util/LinkedHashMap;

    iput-wide p1, p0, Ll3/g0;->a:J

    iput-object p3, p0, Ll3/g0;->b:LJ2/j;

    return-void
.end method
