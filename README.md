# Antigravity Proxy 🚀

[🇹🇷 Türkçe](#türkçe-açıklama) | [🇬🇧 English](#english-description)

---

## Türkçe Açıklama

**Antigravity Proxy**, Google'ın **Antigravity (AGY)** altyapısını standart **OpenAI**, **Anthropic (Claude)** ve **Gemini** API formatlarına dönüştüren yüksek performanslı bir ters vekil (reverse proxy) ağ geçididir.

Çoklu hesap havuzu sayesinde bir Google hesabının kotası bittiğinde (HTTP 429), otomatik olarak sıradaki hesaba geçiş yaparak kesintisiz yapay zeka hizmeti sunar.

### ✨ Temel Özellikler

- **Üçlü API Uyumluluğu:** 
  - OpenAI Uç Noktası: `/v1/chat/completions`, `/v1/models`
  - Anthropic (Claude) Uç Noktası: `/v1/messages`
  - Gemini Uç Noktası: `/v1beta/models`
- **Çoklu Hesap Havuzu & Otomatik Rotasyon:** Birden fazla Google/Antigravity hesabını bağlayın. Kotası dolan hesaplar otomatik soğumaya alınır ve diğer hesaba geçilir.
- **Görsel Web Yönetim Paneli:** `http://localhost:8088` adresinden hesap durumlarını, kalan kotaları ve anlık kullanım grafiklerini izleyin.
- **Gelişmiş Araç Desteği:** OpenAI Function Calling ve Anthropic Tool Use tam uyumlu.
- **Claude Code & Orca IDE Entegrasyonu:** Claude Code, Cursor, Orca IDE, Continue ve tüm OpenAI SDK'ları ile tak-çalıştır uyumlu.
- **Düşünme (Thinking) Desteği:** Akıl yürütme (reasoning) çıktıları ve imza önbelleği tam desteklenir.

### 📋 Desteklenen Modeller

| Gemini Modelleri | Claude Modelleri |
| :--- | :--- |
| `gemini-3-flash` | `claude-opus-4-6` |
| `gemini-3-flash-thinking` | `claude-opus-4-6-thinking` |
| `gemini-3.1-pro-high/low` | `claude-sonnet-4-6` |
| `gemini-2.5-pro` | `claude-sonnet-4-6-thinking` |
| `gemini-2.5-flash` | `claude-3-5-sonnet` |
| `gemini-2.5-flash-thinking` | |

---

### 🚀 Hızlı Başlangıç (Windows)

1. Klasördeki **`start.bat`** dosyasına çift tıklayın.  
   *(İlk çalıştırmada bağımlılıklar otomatik yüklenir ve `.env` dosyası hazırlanır).*
2. Tarayıcınızda yönetim panelini açın:  
   🔗 **`http://localhost:8088`**  
   - Varsayılan Yönetici Şifresi: `admin123` (veya `.env` içinde belirlediğiniz şifre)
3. **Hesap Yönetimi** sekmesinden Google hesabınızı bağlayın.
4. Artık yerel API anahtarınızla (`sk-antigravity-local`) tüm uygulamalarınızdan istek atabilirsiniz!

---

### 🛠️ API Kullanım Örnekleri

#### OpenAI Formatı ile İstek:
```bash
curl http://localhost:8088/v1/chat/completions \
  -H "Authorization: Bearer sk-antigravity-local" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gemini-2.5-flash",
    "messages": [{"role": "user", "content": "Merhaba!"}]
  }'
```

#### Anthropic (Claude) Formatı ile İstek:
```bash
curl http://localhost:8088/v1/messages \
  -H "x-api-key: sk-antigravity-local" \
  -H "anthropic-version: 2023-06-01" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "claude-sonnet-4-6",
    "max_tokens": 1024,
    "messages": [{"role": "user", "content": "Selam Claude!"}]
  }'
```

---

## English Description

**Antigravity Proxy** is a high-performance unified API gateway that exposes Google Antigravity's internal models through standard **OpenAI**, **Anthropic**, and **Gemini** REST protocols.

### 🌟 Features
- **Multi-Account Pool:** Automatically rotates across multiple accounts when rate limits (429) or quota exhaustion occurs.
- **Visual Web Dashboard:** Web UI on `http://localhost:8088` to monitor quotas, token usage, and live accounts.
- **Universal Tooling:** Drop-in compatibility with Claude Code, Cursor, Orca IDE, OpenAI SDK, and LangChain.
- **Thinking Models:** Full support for reasoning streams and signature caches.

### ⚡ Quick Start
```bash
# 1. Install dependencies
npm install

# 2. Setup configuration
cp .env.example .env

# 3. Start proxy
npm start
```

Visit `http://localhost:8088` to manage your accounts and monitor usage.

---

## Lisans / License

Bu proje [MIT](LICENSE) lisansı altındadır.
