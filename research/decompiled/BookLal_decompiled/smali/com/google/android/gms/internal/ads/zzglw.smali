.class final Lcom/google/android/gms/internal/ads/zzglw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzb:Lcom/google/android/gms/internal/ads/zzhdh;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhdh;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzglw;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzglw;->zzb:Lcom/google/android/gms/internal/ads/zzhdh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzglw;->zzc:Lcom/google/android/gms/internal/ads/zzhdh;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbcw;)Z
    .locals 6

    const-class v0, Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcw;->zza()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb()Lcom/google/android/gms/internal/ads/zzbde;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbde;->zzb()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibz;->zzz()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcw;->zza()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzd()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzz()[B

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzglw;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwm;->zza()V

    new-instance v4, Ljava/lang/String;

    const-string v5, "eyJwcmltYXJ5S2V5SWQiOjMzMTUxOTk4MTksImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQVNoRGZwOUM5QjcrMU1nMmJQbHJ5WExPOHVScDd6YWZJMldSYURmR1ZqVmlJaEFJNFZzTmVrcCs0bVY0d2toZlhVb3pQZWs5TjgxcUdIK2plNnhjOFpoQkhQIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMzE1MTk5ODE5LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0="

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzgda;->zzb(Ljava/lang/String;Z)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhdj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhcz;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhmu;->zzc()Lcom/google/android/gms/internal/ads/zzhmu;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzg(Lcom/google/android/gms/internal/ads/zzhcl;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhdh;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzglw;->zzb:Lcom/google/android/gms/internal/ads/zzhdh;

    new-instance v4, Ljava/lang/String;

    const-string v5, "eyJwcmltYXJ5S2V5SWQiOjMwODI3ODA4ODgsImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQkEyWW5HaWFpc3pEcGtJcWpjalorUTJ2alFUUldQZjhFcTlkZVlhNFpKa3lJaEFCQWFESTd6QWJkQXVpQmlnOWdHSkJ1VTUzSGg5Z0RCa0t2amswS2tabDhjIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMDgyNzgwODg4LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0="

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzgda;->zzb(Ljava/lang/String;Z)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhdj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhcz;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhmu;->zzc()Lcom/google/android/gms/internal/ads/zzhmu;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzg(Lcom/google/android/gms/internal/ads/zzhcl;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhdh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzglw;->zzc:Lcom/google/android/gms/internal/ads/zzhdh;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v4, Ljava/security/GeneralSecurityException;

    const-string v5, "Failed to verify program"

    invoke-direct {v4, v5, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglw;->zzb:Lcom/google/android/gms/internal/ads/zzhdh;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhdh;->zza([B[B)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglw;->zzc:Lcom/google/android/gms/internal/ads/zzhdh;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhdh;->zza([B[B)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v2

    :catch_2
    :cond_2
    return v3
.end method
