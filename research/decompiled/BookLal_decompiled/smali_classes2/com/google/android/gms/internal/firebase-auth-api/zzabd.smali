.class final Lcom/google/android/gms/internal/firebase-auth-api/zzabd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaad;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzr(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzm:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzabc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzs(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzk(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzt:Lcom/google/firebase/auth/AuthCredential;

    iput-object p3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzu:Ljava/lang/String;

    iput-object p4, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzv:Ljava/lang/String;

    iget-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj:Lcom/google/firebase/auth/internal/zzao;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/firebase/auth/internal/zzao;->zzb(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzl(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzs:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zzr(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzs:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zzr(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzacj;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzp:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zzd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/firebase-auth-api/zzwm;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zza()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zzb()Lcom/google/firebase/auth/zze;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zzs(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzwn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzw:Lcom/google/android/gms/internal/firebase-auth-api/zzwn;

    const-string p1, "REQUIRES_SECOND_FACTOR_AUTH"

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzl(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zzs(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "MISSING_MFA_PENDING_CREDENTIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b9

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "MISSING_MFA_ENROLLMENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42ba

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "INVALID_MFA_PENDING_CREDENTIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bb

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "MFA_ENROLLMENT_NOT_FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bc

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_4
    const-string v1, "ADMIN_ONLY_OPERATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_5
    const-string v1, "UNVERIFIED_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42be

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_6
    const-string v1, "SECOND_FACTOR_EXISTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bf

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_7
    const-string v1, "SECOND_FACTOR_LIMIT_EXCEEDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_8
    const-string v1, "UNSUPPORTED_FIRST_FACTOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c1

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_9
    const-string v1, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c2

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zzr(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)V

    return-void

    :cond_b
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzk(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzl(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzada;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzy:Lcom/google/android/gms/internal/firebase-auth-api/zzada;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzadd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzadd;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/firebase-auth-api/zzade;Lcom/google/android/gms/internal/firebase-auth-api/zzacv;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type: "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzn:Lcom/google/android/gms/internal/firebase-auth-api/zzade;

    iput-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzo:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/firebase-auth-api/zzadn;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzq:Lcom/google/android/gms/internal/firebase-auth-api/zzadn;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zzm()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzr:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zzo()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type: "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzn:Lcom/google/android/gms/internal/firebase-auth-api/zzade;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;)V

    return-void
.end method

.method public final zzq(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zze:I

    const-string v1, "Unexpected response type "

    invoke-static {v0, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzabg;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;->zzr(Lcom/google/android/gms/internal/firebase-auth-api/zzabe;)V

    return-void
.end method
