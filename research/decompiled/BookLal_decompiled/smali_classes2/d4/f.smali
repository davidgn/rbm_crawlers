.class public abstract Ld4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LM4/i;

.field public static b:LM4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LM4/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, LM4/i;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Ld4/f;->a:LM4/i;

    return-void
.end method
