.class public abstract Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/google/firebase/installations/InstallationTokenResult;)Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/AutoValue_InstallationIdResult;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/InstallationTokenResult;)V

    return-object v0
.end method


# virtual methods
.method public abstract installationId()Ljava/lang/String;
.end method

.method public abstract installationTokenResult()Lcom/google/firebase/installations/InstallationTokenResult;
.end method
