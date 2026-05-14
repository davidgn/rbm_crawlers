.class public final Lcom/google/firebase/auth/internal/zzbr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:Ljava/util/Map;

.field final zzb:Lcom/google/firebase/FirebaseApp;

.field final zzc:Lcom/google/firebase/auth/FirebaseAuth;

.field final zzd:Lcom/google/firebase/auth/internal/zzbm;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzadd;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 2

    new-instance v0, Lcom/google/firebase/auth/internal/zzbn;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzbn;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzbr;->zza:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbr;->zzb:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzbr;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzbr;->zzd:Lcom/google/firebase/auth/internal/zzbm;

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/firebase/auth/internal/zzbr;Lcom/google/android/gms/internal/firebase-auth-api/zzadd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzadd;

    return-void
.end method

.method public static zzd()V
    .locals 0

    return-void
.end method

.method private final zzf(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbr;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private static zzg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzac;->zzd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "*"

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/internal/zzbr;->zzd()V
    :try_end_0
    .catch Lcom/google/firebase/auth/internal/zzbs; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzbr;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/zzbr;->zzf(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/auth/internal/zzbr;->zzb(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :cond_1
    new-instance p1, Lcom/google/firebase/auth/internal/zzbq;

    invoke-direct {p1, p0, p3}, Lcom/google/firebase/auth/internal/zzbq;-><init>(Lcom/google/firebase/auth/internal/zzbr;Lcom/google/android/recaptcha/RecaptchaAction;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/internal/zzbr;->zzd()V
    :try_end_0
    .catch Lcom/google/firebase/auth/internal/zzbs; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzbr;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/zzbr;->zzf(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzbr;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v0, "RECAPTCHA_ENTERPRISE"

    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zze(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/auth/internal/zzbp;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/auth/internal/zzbp;-><init>(Lcom/google/firebase/auth/internal/zzbr;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzadd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
