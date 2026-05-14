.class public abstract LK/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LK/g;

.field public static final b:LK/g;

.field public static final c:LK/g;

.field public static final d:LK/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LK/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LK/g;-><init>(LK/f;Z)V

    sput-object v0, LK/h;->a:LK/g;

    new-instance v0, LK/g;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LK/g;-><init>(LK/f;Z)V

    sput-object v0, LK/h;->b:LK/g;

    new-instance v0, LK/g;

    sget-object v1, LK/f;->a:LK/f;

    invoke-direct {v0, v1, v2}, LK/g;-><init>(LK/f;Z)V

    sput-object v0, LK/h;->c:LK/g;

    new-instance v0, LK/g;

    invoke-direct {v0, v1, v3}, LK/g;-><init>(LK/f;Z)V

    sput-object v0, LK/h;->d:LK/g;

    return-void
.end method
