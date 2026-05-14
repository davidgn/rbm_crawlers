.class public abstract LB4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LG3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LG3/b;

    const-string v1, "NO_OWNER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB4/e;->a:LG3/b;

    return-void
.end method

.method public static a()LB4/d;
    .locals 2

    new-instance v0, LB4/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB4/d;-><init>(Z)V

    return-object v0
.end method
