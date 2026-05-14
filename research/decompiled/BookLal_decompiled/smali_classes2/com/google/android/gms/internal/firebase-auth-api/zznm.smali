.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zznm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzka;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zznm;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznm;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzlp;Lcom/google/android/gms/internal/firebase-auth-api/zzcr;)Lcom/google/android/gms/internal/firebase-auth-api/zzbl;
    .locals 12

    const-string v0, "Unable to parse HashType: "

    const-string v1, "Unable to parse OutputPrefixType: "

    sget v2, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zza:I

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzln;->zzg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :try_start_0
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzln;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzafx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzafx;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/internal/firebase-auth-api/zzafx;)Lcom/google/android/gms/internal/firebase-auth-api/zzrq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zza()I

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zznd;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzd()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzrw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zza()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzrw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zzf()I

    move-result v5

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/zztv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    add-int/lit8 v6, v5, -0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_1

    const/4 v11, 0x5

    if-ne v6, v11, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzrn;->zza(I)I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zznf;)Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzln;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v10, :cond_8

    if-eq v5, v9, :cond_7

    if-eq v5, v8, :cond_6

    if-ne v5, v7, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzng;

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztv;->zza()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzng;

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzng;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzng;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzng;)Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzni;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzmw;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzmw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzmv;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmw;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzni;)Lcom/google/android/gms/internal/firebase-auth-api/zzmw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzrq;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzq()[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvy;->zzb([BLcom/google/android/gms/internal/firebase-auth-api/zzcr;)Lcom/google/android/gms/internal/firebase-auth-api/zzvy;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmw;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzvy;)Lcom/google/android/gms/internal/firebase-auth-api/zzmw;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzln;->zzf()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmw;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzmw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmw;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Only version 0 keys are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzags; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Parsing HmacKey failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong type URL in call to HmacProtoSerialization.parseKey"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
